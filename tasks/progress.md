# Progress Log (append-only)

이 파일은 완료한 작업만 기록합니다. 새 항목은 항상 맨 아래에 추가합니다.

---

## 2026-08-19

- `tasks/` 폴더, `todo.md`, `progress.md` 생성.
- `SECURITY.md` 비상 대응 매뉴얼 작성 (키 노출 시 확인→폐기→재발급→환경변수 교체→사용이력 확인 순서, OpenRouter/Oracle/WordPress별 가이드 포함).
- `README.md` 작성 — 폴더 구조 정리. 지침서 파일명이 `clade-md`로 되어 있어 자동 인식 안 됨을 발견, 사용자에게 안내함 (변경은 보류, 요청 시 진행 예정).
- `Downloads` 폴더 정리: `images/`(3개 png), `docs/`(9개: md·pdf·hwpx·xlsx), `misc/`(desktop.ini) 폴더 생성 및 이동 완료. 이름 충돌 없어 `.bak` 백업 발생하지 않음. 이동 후 `ls`로 결과 확인함.
- `claude-workspace`를 GitHub private 레포(`Yejin0130/claude-workspace`)로 업로드. `.gitignore`로 민감 파일 제외, `README.md` 폴더 구조 정리, 첫 커밋 "initial setup"으로 push 완료.

## 2026-08-20

- `dark-mode-portfolio` 브랜치에서 `portfolio/index.html` 배경을 다크모드(고정)로 변경 — `:root` 색상 변수 반전(어두운 배경 + 밝은 민트 텍스트), sticky nav 배경/카드 그림자 값도 다크 배경에 맞게 조정. 브라우저로 직접 열어 확인 후 사용자 승인 받음.
- `master`에 fast-forward 머지 후 GitHub에 push 완료.
