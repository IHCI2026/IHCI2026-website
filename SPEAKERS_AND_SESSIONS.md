# Adding Speakers and Sessions

This guide explains how to add speakers and sessions to the IHCI 2026 website without using Sessionize.

## Adding a Speaker

Create a new markdown file in `content/speakers/` with the following frontmatter:

```yaml
---
title: Dr. Jane Smith                    # Full name (will be displayed)
firstName: Jane                          # First name (for sorting)
lastName: Smith                          # Last name (for sorting)
tagLine: Professor of HCI, University    # Short description/title
linkedinUrl: https://linkedin.com/in/... # Optional
xUrl: https://x.com/username            # Optional (Twitter/X)
company: https://example.edu             # Optional - website URL
bio: |                                   # Optional - longer bio
  Multi-line biography text here.
---

Additional content about the speaker (optional).
```

### Adding a Speaker Photo

Place an image file named `avatar.*` (e.g., `avatar.jpg`, `avatar.png`) in the same directory as the speaker's markdown file, or use Hugo's page bundles:

1. Create a folder: `content/speakers/jane-smith/`
2. Add `index.md` with the frontmatter above
3. Add `avatar.jpg` (or .png, .webp) in the same folder

## Adding a Session

Create a new markdown file in `content/sessions/` with the following frontmatter:

```yaml
---
title: Designing Inclusive User Interfaces  # Session title
date: 2026-10-28                           # Session date (YYYY-MM-DD)
startsAt: 2026-10-28T09:00:00              # Start time (ISO 8601 format)
endsAt: 2026-10-28T10:30:00                # End time (ISO 8601 format)
track: technical                            # Track: technical, business, scientific, etc.
room:
  name: Main Hall                          # Room name
isScheduled: true                          # Must be true to appear in schedule
isServiceSession: false                    # Set true for breaks, lunch, etc.
categories:                                # Session categories/tags
  - Workshop
  - Accessibility
speakers:                                  # List of speakers
  - id: jane-smith                        # Speaker ID (matches filename)
    fullName: Dr. Jane Smith              # Speaker's full name
sessionId: session-1                       # Unique session identifier
---

Session description and details go here.
```

### Session Fields Explained

- **title**: The session name shown in the schedule
- **date**: The day the session occurs (used for grouping by day)
- **startsAt**: Full date and time when the session starts
- **endsAt**: Full date and time when the session ends
- **track**: Category for filtering (technical, business, scientific, etc.)
- **room.name**: The venue/room where the session takes place
- **isScheduled**: Must be `true` for the session to appear in the schedule
- **isServiceSession**: Set to `true` for non-talk items (breaks, meals, registration)
- **categories**: Tags for the session (Workshop, Keynote, Panel, etc.)
- **speakers**: Array of speaker objects with `id` and `fullName`
- **sessionId**: Unique identifier for the session

## Examples

Example files are provided:
- `content/speakers/example-speaker.md`
- `content/sessions/example-session.md`

You can duplicate and modify these files to add more speakers and sessions.

## Tips

1. **File naming**: Use lowercase with hyphens (e.g., `john-doe.md`, `morning-keynote.md`)
2. **Speaker IDs**: The speaker `id` in sessions should match the speaker's filename
3. **Tracks**: Use consistent track names for proper filtering
4. **Time format**: Always use ISO 8601 format for dates and times (YYYY-MM-DDTHH:MM:SS)
5. **Images**: Supported formats are .jpg, .png, .webp for speaker avatars
