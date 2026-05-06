# amber-store-cache-trail

`amber-store-cache-trail` explores databases with a small Swift codebase and local fixtures. The technical goal is to develop a Swift command-oriented project for cache scenarios with negative fixtures, human-readable error snapshots, and local-only command execution.

## Why This Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Amber Store Cache Trail Review Notes

The first comparison I would make is `join width` against `plan drift` because it shows where the rule is most opinionated.

## Capabilities

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-store-cache-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `join width` and `plan drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `stress` is the high score at 220; `recovery` is the low score at 149.

## Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
