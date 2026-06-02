# 인터페이스 정의서 (Integration Specification)

## 1. 개요

본 문서는 '3jo-tajo' 프로젝트 내 컴포넌트 간의 통신 및 외부 시스템과의 연동에 대한 정의를 포함한다. 현재 프로젝트는 단일 웹 애플리케이션으로 구성되어 있으며, 주요 인터페이스는 데이터베이스와의 연동이다.

## 2. 컴포넌트 간 통신 (Component-to-Component Communication)

### 2.1 웹 애플리케이션 - 데이터베이스 연동

*   **통신 방식:** JDBC (Java Database Connectivity)
*   **프로토콜:** MySQL 프로토콜
*   **데이터 규격:** SQL 쿼리 및 결과 셋 (ResultSet)
*   **담당 컴포넌트:** `DBUtil.java` 클래스를 통해 데이터베이스 연결 관리 및 쿼리 실행
*   **접속 정보:** `DBUtil.java`에 정의된 `jdbc:mysql://localhost:3306/HMC_SCM` URL, `root` 사용자, `1234` 비밀번호 사용

### 2.2 데이터 교환 형식

프로젝트에 포함된 `gson-2.10.1.jar` 및 `json-simple-1.1.1.jar` 라이브러리를 통해 JSON 형식의 데이터 교환이 가능함을 추정할 수 있다. 이는 주로 클라이언트-서버 간 데이터 전송 또는 외부 API 연동 시 활용될 수 있다. 현재 제공된 소스만으로는 구체적인 JSON 데이터 전문 규격은 파악하기 어렵다.

## 3. 외부 시스템 연동 (External System Integration)

현재 제공된 프로젝트 파일만으로는 명확한 외부 시스템 연동 지점은 확인되지 않는다. 향후 외부 API 호출 또는 다른 서비스와의 연동이 필요한 경우, 해당 인터페이스에 대한 상세 정의가 추가되어야 한다.

---

**파일명:** `3jo-tajo_IntegrationSpec_v1.0_260602.md`
**작성일:** 2026년 06월 02일
