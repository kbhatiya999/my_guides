---
# Cloud Services Guide
# Cloud Services, Free Tier, Paid Tier, Infrastructure, SaaS
# Category: Cloud Services
# Complexity: Beginner to Intermediate - service selection and usage
# Prerequisites: Basic understanding of cloud computing
# Keywords: cloud-services, free-tier, paid-tier, infrastructure, saas, hosting, databases
# Last Updated: 2024-01-20
---

## Quick Reference
- **Purpose**: Comprehensive guide to cloud services for development and production
- **Organization**: Free tier services and paid tier comparisons
- **Focus**: Practical service selection and usage
- **Best For**: Developers choosing cloud services

# Cloud Services Guide

A comprehensive guide to cloud services organized by free tier offerings and paid tier comparisons for development and production use.

## 🗂️ Organization

### [Free Tier Services](free_tier/)
- **[AI/ML Services](free_tier/ai_ml.md)** - LLM APIs, embeddings, vector databases
- **[Web Development Services](free_tier/web_dev.md)** - Databases, hosting, deployment
- **[DevOps Services](free_tier/devops.md)** - Monitoring, CI/CD, infrastructure

### [Paid Tier Comparison](pricing_comparison.md)
- Service pricing comparisons
- Scaling considerations
- Enterprise features

## 🆓 Free Tier Highlights

### AI/ML Services
- **LLM APIs**: Groq (14,400 req/day), Google Gemini (15 req/min)
- **Embeddings**: Google Gemini API (free), Google Vertex AI ($300 credit)
- **Vector Databases**: Pinecone (100K vectors), Chroma (unlimited self-hosted)

### Web Development Services
- **Databases**: Supabase (50K MAUs), Neon (20 projects)
- **Hosting**: Vercel (100GB bandwidth), Netlify (100GB bandwidth)
- **Full-stack**: Railway ($5 credit), Render (750 hours)

### DevOps Services
- **Monitoring**: Various free tiers available
- **CI/CD**: GitHub Actions, GitLab CI
- **Infrastructure**: Cloud provider free tiers

## 🎯 Quick Service Selection

### For AI/ML Development
1. **LLM API**: Groq (fast) or Google Gemini (multimodal)
2. **Embeddings**: Google Gemini API (free) or Google Vertex AI ($300 credit)
3. **Vector DB**: Pinecone (managed) or Chroma (self-hosted)
4. **Hosting**: Railway or Render

### For Web Development
1. **Database**: Supabase (full-stack) or Neon (serverless)
2. **Hosting**: Vercel (Next.js) or Netlify (static)
3. **Full-stack**: Railway or Render
4. **AI Features**: Groq API + Pinecone

### For DevOps
1. **CI/CD**: GitHub Actions (free) or GitLab CI
2. **Monitoring**: Cloud provider free tiers
3. **Infrastructure**: Cloud provider free tiers

## 🔗 Related Resources

- **AI/ML Development**: [01_ai_ml/](../01_ai_ml/)
- **Web Development**: [02_web_development/](../02_web_development/)
- **DevOps**: [03_devops_infrastructure/](../03_devops_infrastructure/)

## 📝 Notes

- **Free Tiers**: All services offer generous free tiers for development
- **Scaling**: Consider how to scale beyond free tier limits
- **Integration**: Most services integrate well with each other
- **Monitoring**: Track usage to stay within free limits

## 🚨 Considerations

- **Usage Limits**: Monitor usage to avoid unexpected costs
- **Data Persistence**: Check data retention policies
- **Migration**: Plan for scaling beyond free tiers
- **Vendor Lock-in**: Consider open-source alternatives where possible
