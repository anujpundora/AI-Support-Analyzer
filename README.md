# Intelligent Case Management System (Salesforce)

A Salesforce-based intelligent support ticket automation system designed to streamline case handling using Apex triggers, automation workflows, and rule-based ticket analysis.

---

## 🚀 Project Overview

The Intelligent Case Management System automates support ticket classification, priority assignment, and follow-up task creation within Salesforce.

The system analyzes incoming support requests and dynamically updates ticket attributes such as priority and AI analysis results while triggering operational workflows automatically.

---

## ⚙️ Features

✅ Automated Support Ticket Processing  
✅ Rule-Based Intelligent Case Classification  
✅ Dynamic Priority Assignment  
✅ Automatic Follow-up Task Creation  
✅ Event-Driven Apex Trigger Automation  
✅ Bulk-Safe Processing using Service Layer Architecture  

---

## 🏗️ Architecture

Trigger → Service Layer → Business Logic Processing

- **Apex Trigger**
  - Executes on Support Ticket creation
  - Invokes service layer logic

- **Service Class**
  - Analyzes ticket description
  - Assigns priority & analysis category
  - Creates follow-up Tasks automatically

---

## 🧠 Intelligent Classification Logic

Tickets are analyzed based on issue keywords:

| Keyword | AI Analysis | Priority |
|----------|------------|----------|
| Payment | Payment Issue Detected | High |
| Login | Login Problem | Medium |
| Others | General Query | Low |

---

## 🛠️ Tech Stack

- Salesforce Platform
- Apex
- Apex Triggers
- SOQL
- Lightning Experience
- Custom Objects
- Workflow Automation
- Data Modeling

---

## 📂 Custom Objects

### Support_Ticket__c
- Priority Field
- Status Field
- Description Field
- AI Analysis

---

## 🔄 Automation Flow

1. User creates Support Ticket
2. Apex Trigger fires
3. Service class analyzes description
4. Priority assigned automatically
5. Follow-up Task generated
6. Operational workflow initiated

---

## ✅ Salesforce Best Practices Implemented

- Bulkified Trigger Design
- Trigger-Service Separation
- Governor Limit Optimization
- Scalable Object Modeling
- Event-Driven Automation

---

## 📸 Sample Output

- Payment issue → Priority set to High
- Login issue → Priority set to Medium
- Automatic Task created for support team

---

## 👨‍💻 Author

**Anuj Pundora**  
Salesforce Developer  

GitHub: https://github.com/anujpundora