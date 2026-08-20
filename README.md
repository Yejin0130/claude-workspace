# claude-workspace

예진 님의 Claude Code 작업 공간입니다. Claude Code는 세션을 시작할 때마다
지침서(`claude md`)를 자동으로 읽고 아래 규칙에 따라 작업합니다.

## 📁 폴더 구조

```
claude-workspace/
├── .gitignore              # 민감 파일(.env, *.key, SSH 키 등) git 제외 설정
├── README.md                # 이 문서
├── SECURITY.md               # 키 노출 비상 대응 매뉴얼
├── claude md                  # 지침서 원본 (⚠️ 파일명 이슈, 아래 참고)
├── .vscode/
│   └── settings.json           # 에디터 설정
├── dosc/
│   ├── resume.pdf               # 이력서
│   └── sample_sales.csv         # 샘플 판매 데이터
├── portfolio/
│   ├── index.html                # 포트폴리오 메인 페이지
│   └── soomin-kim/
│       └── index.html              # 개인 포트폴리오 페이지
├── tasks/
│   ├── todo.md                   # 오늘 할 일 체크리스트
│   └── progress.md                # 완료한 작업 기록 (append-only)
└── weather/
    ├── get_weather.ps1            # 서울 강남구 날씨/미세먼지 조회 스크립트
    └── weather.txt                  # 스크립트 실행 결과
```

## ⚠️ 확인 필요: 지침서 파일명

지침서가 현재 `claude md`라는 이름으로 저장되어 있습니다. Claude Code가 세션 시작 시
자동으로 읽으려면 파일명이 정확히 **`CLAUDE.md`**여야 합니다. 지금 이름으로는
매번 수동으로 안내하지 않는 한 규칙이 자동 적용되지 않습니다.

→ 이름 변경을 원하시면 "claude md를 CLAUDE.md로 바꿔줘"라고 요청해주세요.

## 📄 각 파일 설명

| 파일/폴더 | 역할 |
|---|---|
| `claude md` (→ `CLAUDE.md` 권장) | Claude Code 행동 지침서 — 보안 규칙, 소통 방식, 작업 원칙 |
| `SECURITY.md` | API 키·비밀번호 노출 의심 시 따라야 할 비상 대응 순서 |
| `tasks/todo.md` | 오늘/현재 진행 중인 작업 체크리스트. 작업 시작 시 확인 |
| `tasks/progress.md` | 완료된 작업만 누적 기록. 작업 종료 시 기록 |
| `dosc/` | 이력서 등 문서 및 샘플 데이터 |
| `portfolio/` | 포트폴리오 웹페이지 |
| `weather/` | 날씨/미세먼지 조회 스크립트 및 결과 |
| `.gitignore` | `.env`, `*.key`, `*.pem`, SSH 키 등 민감 파일을 git에서 제외 |

향후 `.env`(환경변수), `.ssh/oracle-server.key`(Oracle SSH 키) 파일이 생성될 예정이며,
`.gitignore`에 의해 git에는 절대 올라가지 않습니다.

## 🔒 지켜지는 보안 규칙 (요약)

- 키·비밀번호는 항상 마스킹해서 표시 (`sk-or-v1-***`)
- `.env`, `*.key`, `*.pem`, `id_rsa`, `credentials` 파일은 git에 올리지 않음
- 코드에 키 하드코딩 금지, 항상 환경변수 참조
- 위험한 작업(삭제, DB 파괴, git 되돌리기, 서버 재부팅 등)은 실행 전 반드시 확인 질문
- 키 노출 의심 시 → `SECURITY.md` 절차대로 안내

자세한 전체 규칙은 지침서(`claude md` → `CLAUDE.md`) 파일을 참고하세요.

## 🚀 작업 흐름

1. 새 작업 시작 → `tasks/todo.md` 확인
2. 3단계 이상 걸리는 작업은 계획을 `tasks/todo.md`에 적고 승인받은 뒤 진행
3. 작업 완료 → 실제로 동작 확인 후 `tasks/progress.md`에 기록
4. 에러 발생 시 다음 작업으로 넘어가지 않고 원인부터 해결
