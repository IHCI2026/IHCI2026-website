---
title: "On-Device AI for Human-AI Interaction: Personal Agents, Multimodal Interfaces, and Human-Centred Evaluation"
shortTitle: "On-Device AI for Human-AI Interaction"
weight: 4
abstract: >
    On-device AI can support private, responsive, and context-aware interaction through personal agents that combine visual, spoken, and textual input. Yet generic image understanding quality does not describe whether an agent can complete a meaningful human task. This tutorial therefore uses task-level multimodal cases. In the main physical-to-digital case, a user points a camera at a product or device and asks the agent to identify it, resolve a spoken reference, read relevant labels, search for a compatible item, navigate a graphical interface, and request confirmation before acting. Supporting cases examine step-aware guidance during assembly or maintenance and local visual assistance for sign, object, and hazard queries. Engineers measure grounding, OCR, clarification accuracy, action success, time to first token, peak memory, data movement, fallback, and thermal stability; HCI asks whether people understand system state, control automation, recover from errors, and make informed privacy choices. A systems-to-interaction worksheet links human goals, usage context, engineering proxies, evidence boundaries, and evaluation plans. OptAI's MeSP research extends the discussion to memory-efficient local adaptation and user controls for consent, inspection, reset, and forgetting. Participants leave with cloud/on-device/hybrid decisions and reproducible evaluation plans for useful, accessible, and responsible multimodal personal agents across diverse devices and everyday usage contexts.
chairs:
    - name: Junyoung Park
      affiliation: On-Device Gen.AI, OptAI Inc., Republic of Korea
    - name: Seongbae Lee
      affiliation: On-Device Gen.AI, OptAI Inc., Republic of Korea
---

**Duration:** 60 minutes | **Mode:** Lecture with guided case analysis and evaluation exercise

**Proposal Coordinator and Corresponding Contact:** Seongjae Park (sjae.park@opt-ai.kr)

**Keywords:** human-AI interaction, multimodal personal agent, physical-to-digital task, on-device AI, HCI evaluation.

## Learning Objectives

By the end of the session, participants will be able to:

- Distinguish system evidence from user outcomes in physical-to-digital, procedural-assistance, accessibility, and locally personalized AI tasks.
- Translate a human goal and usage context into engineering proxies, comparison conditions, and an explicit evidence boundary.
- Interpret prepared traces for visual grounding, label reading, clarification, GUI actions, step tracking, quantization, fallback, memory peaks, and thermal behaviour without treating them as usability claims.
- Design HCI evaluations for automation approval, error recovery, assistance timing, camera and microphone privacy, correction, accessibility, and language inclusion.
- Choose among cloud, on-device, and hybrid execution while specifying consent, inspection, reset, and forgetting controls for personalization.

## Motivation, Fit with IHCI, and Evidence Boundary

Multimodal personal agents move beyond describing images. A user may point a camera at a product and ask the agent to find a compatible part, follow an assembly task with step-aware help, or request information about a sign, object, or possible hazard. A system may ground the request to the wrong object, select the wrong interface element, or intervene at an unhelpful moment. Average accuracy or latency cannot show whether people notice these failures, understand system state, or recover safely. Prior HCI work therefore emphasizes feedback, control, expectation management, and error recovery in human-AI interaction [1, 2].

OptAI's expertise is mobile AI optimisation: quantization experiments, graph conversion, operator and fallback diagnosis, NPU mapping, device benchmarking, and memory-efficient local adaptation. The tutorial uses annotated traces and prepared interaction records for guided case analysis. These materials establish system conditions, not user outcomes. A benchmark may establish a latency distribution or memory limit; whether the resulting interaction is understandable, trustworthy, inclusive, or controllable still requires HCI evaluation.

The contribution to IHCI is a reusable translation and evaluation method. It connects human-AI interaction, computer vision, multimodal interaction, privacy, accessibility, ubiquitous computing, and reproducible HCI. HCI participants learn which measurements and failure records to request from deployment teams; engineers learn how to formulate user questions and limit claims to the evidence actually collected.

## A Systems-to-Interaction Tutorial Method

The tutorial uses a repeated five-part bridge: human goal, usage context, engineering proxy, evidence boundary, and HCI evaluation plan. Each prepared case bundle contains a scenario, an annotated system trace, an interaction transcript or interface state, and a failure or trade-off to analyse. Participants identify what the trace establishes, what remains unknown about people, and how a study could answer the remaining question. No participant device or software installation is required.

### Physical-to-Digital Personal Agent: See, Ask, and Act

A user points a camera at a product or device and asks the agent to find a compatible part and add it to a shopping cart. The agent must identify the referent, read relevant labels, resolve ambiguity, search for candidates, navigate a graphical interface, and request confirmation before taking a consequential action. Ego2Web [11] motivates this bridge from egocentric visual context to online execution, while ShowUI [13] illustrates screenshot grounding and GUI navigation. ClearVQA [3] motivates asking which object or attribute the user means rather than guessing. Engineering evidence includes grounding and OCR accuracy, clarification success, end-to-end task success, action errors, response latency, memory, data routing, and fallback. Participants compare immediate execution with clarify-before-action and confirmation-before-action, then design measures for comprehension, user effort, intervention, cancellation, undo, and recovery.

### Situated Guidance and Accessible Visual Assistance

Two shorter cases extend the main workflow. In step-aware assistance, an agent observes assembly or maintenance, tracks the current step, detects a likely omission, and decides whether and when to offer guidance; Ego-EXTRA [12] provides evidence for expert-trainee assistance from egocentric video. In accessible visual assistance, a user asks about a sign, object, or possible hazard and receives local spoken feedback. Prior evaluation identifies contextual understanding, multilingual support, assistive object recognition, and hallucination as open issues [4], while OpenGlass [14] motivates query-to-audio latency, safety-aware abstention, and auditable local processing. Across both cases, camera input, speech, optional text, and agent action form one continuous interaction. GPTQ [5], SmoothQuant [6], and AWQ [7] motivate decoder-side PTQ choices, while visual-token budgets, encoders, projectors, graph conversion, operator support, memory, and thermal behaviour constrain responsiveness. Participants evaluate assistance timing, interruption, repair, privacy comprehension, accessible feedback, and appropriate abstention rather than a generic image-quality score.

### MeSP and User-Controlled Local Adaptation

Local adaptation can support personal vocabulary, preferred explanations, and recurring tasks while reducing routine transfer of raw interactions. LoRA [8] provides the low-rank basis and MeBP [9] a mobile memory-saving baseline. OptAI's MeSP [10] recomputes the intermediate projection h = xA during backward while preserving gradients identical to standard backpropagation. Across Qwen2.5 models from 0.5B to 3B parameters, MeSP reports a 49% average peak-memory reduction relative to MeBP; for Qwen2.5-0.5B, peak memory falls from 361 MB to 136 MB. This is engineering evidence for feasibility, not evidence that users want local learning. Participants therefore design conditions and measures for notice, consent, inspection, reset, disabling, and forgetting. Multimodal adaptation is discussed as a future evaluation question, not as a result established by the cited MeSP experiments.

### Shared Requirements and HCI Evaluation Framework

Participants complete a template covering the research question, comparison conditions, participants and context, representative tasks, behavioural outcomes, self-report or interview measures, paired device evidence, and claim boundary. For the physical-to-digital case, reference grounding, label reading, clarification success, GUI action success, and latency become experimental conditions paired with user effort, comprehension, privacy, approval, cancellation, recovery, and task-completion measures. Procedural and accessibility cases add intervention timing, interruption, harmful-error severity, and abstention. Tool success is paired with approval, cancellation, and recovery. The exercise ends in a reasoned cloud, on-device, or hybrid decision and a reproducible plan for what must be validated with people.

## Outline and Time Breakdown

| Time | Segment / Presenter | Content and activities |
| --- | --- | --- |
| 0–12 min | HCI framing and shared vocabulary (J. Park) | Define HCI for on-device AI and distinguish engineering evidence from claims about usability, trust, accessibility, privacy, or perceived responsiveness. |
| 12–27 min | Systems-to-interaction method (J. Park) | Map human goals and usage contexts to proxies, prepared device evidence, evidence boundaries, and HCI evaluation plans; introduce MeSP as a local-adaptation extension. |
| 27–45 min | Guided case analysis (Both) | Analyse a physical-to-digital personal-agent case from camera input to confirmed GUI action, then compare step-aware guidance and accessible visual assistance. |
| 45–60 min | Evaluation exercise and Q&A (Both) | Use the worksheet to define a research question, conditions, participants, tasks, measures, evidence boundary, and cloud/on-device/hybrid decision; conclude with Q&A. |

Four connected blocks move from HCI framing to the translation method, prepared case analysis, and evaluation design. The tutorial is self-contained within 60 minutes, uses static reusable materials, and requires no participant software installation.

## Target Audience and Prerequisites

- HCI researchers and designers collaborating with AI, mobile, or systems teams
- Mobile AI and multimodal-system engineers translating product requirements
- Industry practitioners planning private, multimodal, or adaptive AI experiences
- Graduate students seeking a bridge between human-AI interaction and efficient deployment

Estimated audience size: 40–60 participants.

**Prerequisites:** basic familiarity with AI or LLM-based systems is helpful; prior HCI study design, PTQ, NPU programming, multimodal deployment, or backpropagation derivation is not required. Participants will receive the systems-to-interaction worksheet, prepared physical-to-digital, procedural-guidance, and accessibility cases; annotated device traces; a cloud/on-device/hybrid decision template; an HCI evaluation template, the paper map used in the session, and an optional MeSP technical appendix. All materials are static, self-contained, and suitable for reuse after the tutorial.

## Instructor Team

The instructors provide OptAI's industry evidence in mobile AI optimisation and make its limits explicit. Grounded in HCI and multimodal-agent literature [1–4, 11–14], the tutorial does not claim new user-study results. It teaches participants to translate deployment observations into HCI hypotheses, measurement requests, and evaluation plans.

**Junyoung Park | Lead instructor | jyoung.park@opt-ai.kr**
Team Lead, On-Device Gen.AI, OptAI Inc. M.S., Ajou University. Publications include papers at ACL 2026 (Industry Track), EMNLP 2025 (Main Track), and AAAI 2025 (Main Track). Leads OptAI's quantization experiments, device-envelope definition, and memory-efficient local adaptation. He will present the translation method, explain the prepared systems evidence, and connect OptAI's MeSP work to user-controlled personalization questions. Research interests: on-device AI and local AI agents.

**Seongbae Lee | Instructor | sbae.lee@opt-ai.kr**
Researcher, On-Device Gen.AI, OptAI Inc. Yonsei University, School of Communication. He co-authored a paper at EMNLP 2025 (Main Track) and works on inference-time optimisation of language models. He will guide the multimodal personal-agent case analysis, distinguish device observations from user outcomes, and support the evaluation exercise. Research interests: LLM training and optimisation.

**Disclosure of Interests.** The instructors are employees of OptAI Inc. and discuss OptAI's workflow and MeSP research. The multimodal personal-agent materials are teaching cases unless explicitly identified as OptAI evidence. No commercial product endorsement or new user-study result is claimed, and no additional competing interests are declared.

## References

1. Amershi, S., Weld, D., Vorvoreanu, M., Fourney, A., Nushi, B., Collisson, P., Suh, J., Iqbal, S., Bennett, P.N., Inkpen, K., Teevan, J., Kikin-Gil, R., Horvitz, E.: Guidelines for Human-AI Interaction. In: Proceedings of the 2019 CHI Conference on Human Factors in Computing Systems, Paper 3, pp. 1–13. ACM, New York (2019)
2. Luger, E., Sellen, A.: "Like Having a Really Bad PA": The Gulf between User Expectation and Experience of Conversational Agents. In: Proceedings of the 2016 CHI Conference on Human Factors in Computing Systems, pp. 5286–5297. ACM, New York (2016)
3. Jian, P., Yu, D., Yang, W., Ren, S., Zhang, J.: Teaching Vision-Language Models to Ask: Resolving Ambiguity in Visual Questions. In: Proceedings of the 63rd Annual Meeting of the Association for Computational Linguistics, pp. 3619–3638. Association for Computational Linguistics (2025)
4. Karamolegkou, A., Nikandrou, M., Pantazopoulos, G., Sanchez Villegas, D., Rust, P., Dhar, R., Hershcovich, D., Søgaard, A.: Evaluating Multimodal Language Models as Visual Assistants for Visually Impaired Users. In: Proceedings of the 63rd Annual Meeting of the Association for Computational Linguistics, pp. 25949–25982. Association for Computational Linguistics (2025)
5. Frantar, E., Ashkboos, S., Hoefler, T., Alistarh, D.: GPTQ: Accurate Post-Training Quantization for Generative Pre-trained Transformers. In: International Conference on Learning Representations (2023)
6. Xiao, G., Lin, J., Seznec, M., Wu, H., Demouth, J., Han, S.: SmoothQuant: Accurate and Efficient Post-Training Quantization for Large Language Models. In: Proceedings of the 40th International Conference on Machine Learning, PMLR, vol. 202, pp. 38087–38099 (2023)
7. Lin, J., Tang, J., Tang, H., Yang, S., Dang, X., Han, S.: AWQ: Activation-Aware Weight Quantization for LLM Compression and Acceleration. In: Proceedings of Machine Learning and Systems, vol. 6, pp. 87–100 (2024)
8. Hu, E.J., Shen, Y., Wallis, P., Allen-Zhu, Z., Li, Y., Wang, S., Wang, L., Chen, W.: LoRA: Low-Rank Adaptation of Large Language Models. In: International Conference on Learning Representations (2022)
9. Song, C., Tang, X.: Memory-Efficient Backpropagation for Fine-Tuning LLMs on Resource-Constrained Mobile Devices. arXiv preprint arXiv:2510.03425 (2025)
10. Park, J., Hong, Y., Kim, S., Lee, J.: Memory-Efficient Structured Backpropagation for On-Device LLM Fine-Tuning. arXiv preprint arXiv:2602.13069 (2026)
11. Yu, S., et al.: Ego2Web: A Web Agent Benchmark Grounded in Egocentric Videos. In: Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pp. 25633–25643 (2026)
12. Ragusa, F., et al.: Ego-EXTRA: Video-Language Egocentric Dataset for Expert-Trainee Assistance. In: Proceedings of the IEEE/CVF Winter Conference on Applications of Computer Vision, pp. 4438–4450 (2026)
13. Lin, K.Q., et al.: ShowUI: One Vision-Language-Action Model for GUI Visual Agent. In: Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pp. 19498–19508 (2025)
14. Li, M., Yao, Y.: OpenGlass: A Sensing-Computing Split Architecture for Local MLLM-Driven Real-Time Visual Assistance. In: Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics, pp. 829–839 (2026)
