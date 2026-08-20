# TODO — 2026-08-19

## 오늘 할 일: 작업 환경 구축

- [x] 1. `tasks/` 폴더 확인 + `todo.md`, `progress.md` 생성 (이 파일)
- [x] 2. `SECURITY.md` 비상 매뉴얼 작성 (`~/claude-workspace/SECURITY.md`)
      - 키 노출 의심 시 대응 순서 (확인 → 폐기 → 재발급 → 환경변수 교체 → 사용 이력 점검)
      - 대상: OpenRouter, Oracle SSH, WordPress
- [x] 3. `README.md` — 폴더 구조 정리 문서 작성

---

## 다운로드 폴더 정리 (신규 요청)

### 계획
1. `Downloads` 안에 `images/`, `docs/`, `misc/` 폴더 생성 (없을 때만)
2. 확장자 기준으로 분류해서 이동:
   - **images/** : `.png` (3개)
     - `Claude Code 업무 가이드-selection - 복사본 (2).png`
     - `Claude Code 업무 가이드-selection - 복사본.png`
     - `Claude Code 업무 가이드-selection.png`
   - **docs/** : `.md`, `.pdf`, `.hwpx`, `.xlsx` (9개)
     - `CLAUDE_템플릿.md`
     - `resume_sample.pdf`
     - `ㄴㄴㄴㄹㄴㄹ.hwpx` / `- 복사본.hwpx` / `- 복사본 (2).hwpx`
     - `통합 문서1.xlsx` / `- 복사본.xlsx` / `- 복사본 (2).xlsx`
   - **misc/** : 위 두 분류에 안 걸리는 파일 → `desktop.ini` (사용자 확인: misc로 이동 진행)
4. 이동 전 대상 폴더에 동일 이름 파일이 있으면 절대 덮어쓰지 않고, 기존 파일을 `.bak`으로 백업한 뒤 이동 (현재는 이름 충돌 없음 — 확인 완료)
5. 이동 후 결과를 폴더별 개수로 요약해서 보고

- [x] 4. 사용자 승인 후 images/docs/misc 폴더 생성 및 파일 이동 실행
- [x] 5. 이동 결과 확인 후 `tasks/progress.md`에 기록

## 참고

- 지침서 파일이 `clade-md`라는 이름으로 저장되어 있어 Claude Code가 자동으로 읽지 못합니다.
  `CLAUDE.md`로 이름을 바꿀지 여쭤봐야 함 (별도 확인 필요, 파일 삭제/이동이라 임의로 하지 않음).
