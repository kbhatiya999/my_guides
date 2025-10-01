---
# Cloud Services Pricing Comparison
# Pricing Comparison, Paid Tier, Cost Analysis, Scaling
# Category: Cloud Services
# Complexity: Intermediate - requires understanding of pricing models
# Prerequisites: Basic understanding of cloud services and pricing
# Keywords: pricing-comparison, paid-tier, cost-analysis, scaling, cloud-services
# Last Updated: 2024-01-20
---

## Quick Reference
- **Purpose**: Compare paid tier pricing across cloud services
- **Focus**: Cost analysis and scaling considerations
- **Best For**: Planning production deployments and scaling

# Cloud Services Pricing Comparison

A comprehensive comparison of paid tier pricing across cloud services to help with production planning and scaling decisions.

## 💰 AI/ML Services Pricing

### LLM APIs
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Google Gemini** | 15 req/min | $0.0005/1K tokens | Multimodal apps |
| **Groq** | 14,400 req/day | $0.27/1M tokens | Fast inference |
| **OpenAI** | $5 credit | $0.002/1K tokens | General purpose |
| **Anthropic** | $5 credit | $0.003/1K tokens | Long conversations |

### Embedding Models
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Google Gemini** | Free tier | $0.15/1M tokens | Multilingual |
| **Google Vertex AI** | $300 credit | $0.10/1M tokens | Google ecosystem |
| **Azure OpenAI** | $200 credit | $0.10/1M tokens | Microsoft ecosystem |
| **OpenAI** | $5 credit | $0.10/1M tokens | General purpose |

### Vector Databases
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Pinecone** | 100K vectors | $70/month | Production |
| **Weaviate** | 1M objects | $25/month | Open-source |
| **Qdrant** | 1M vectors | $25/month | High performance |
| **Zilliz** | 1M vectors | $25/month | Large scale |

## 💰 Web Development Services Pricing

### Databases
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Supabase** | 50K MAUs | $25/month | Full-stack apps |
| **Neon** | 20 projects | $19/month | Serverless apps |
| **PlanetScale** | 1 database | $29/month | MySQL scaling |
| **MongoDB Atlas** | 512MB | $9/month | NoSQL apps |

### Hosting Services
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Vercel** | 100GB bandwidth | $20/month | Next.js apps |
| **Netlify** | 100GB bandwidth | $19/month | Static sites |
| **Railway** | $5 credit | $5/month | Full-stack apps |
| **Render** | 750 hours | $7/month | Full-stack apps |
| **Heroku** | 550-1000 hours | $7/month | Full-stack apps |

## 💰 DevOps Services Pricing

### CI/CD Platforms
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **GitHub Actions** | 2,000 min/month | $0.008/minute | GitHub projects |
| **GitLab CI/CD** | 400 min/month | $4/user/month | GitLab projects |
| **CircleCI** | 6,000 min/month | $0.006/minute | Multi-platform |
| **Travis CI** | Unlimited (open-source) | $69/month | Open-source |

### Monitoring Services
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **UptimeRobot** | 50 monitors | $7/month | Uptime monitoring |
| **Pingdom** | 1 site | $10/month | Website monitoring |
| **Sentry** | 5,000 errors/month | $26/month | Error tracking |
| **LogRocket** | 1,000 sessions/month | $99/month | Frontend monitoring |

### Infrastructure Services
| Service | Free Tier | Paid Tier | Best For |
|---------|-----------|-----------|----------|
| **Cloudflare** | Unlimited bandwidth | $20/month | CDN, security |
| **AWS** | 12 months free | Pay-per-use | Cloud infrastructure |
| **Google Cloud** | $300 credit | Pay-per-use | Cloud infrastructure |
| **Azure** | $200 credit | Pay-per-use | Cloud infrastructure |

## 📊 Cost Analysis by Use Case

### Small Startup (1-10 users)
**Monthly Cost: ~$50-100**
- **Database**: Supabase ($25/month)
- **Hosting**: Vercel ($20/month)
- **Monitoring**: UptimeRobot ($7/month)
- **Total**: ~$52/month

### Medium Business (100-1000 users)
**Monthly Cost: ~$200-500**
- **Database**: Supabase Pro ($25/month)
- **Hosting**: Vercel Pro ($20/month)
- **AI Features**: Groq API (~$50/month)
- **Monitoring**: Sentry ($26/month)
- **Total**: ~$121/month

### Large Enterprise (1000+ users)
**Monthly Cost: ~$1000+**
- **Database**: Supabase Team ($599/month)
- **Hosting**: Vercel Enterprise (custom)
- **AI Features**: Multiple APIs (~$200/month)
- **Monitoring**: Enterprise tools (~$200/month)
- **Total**: ~$1000+/month

## 🎯 Scaling Considerations

### When to Scale Up
- **Usage Limits**: Approaching free tier limits
- **Performance**: Need better performance
- **Features**: Need advanced features
- **Support**: Need priority support

### Cost Optimization Tips
1. **Monitor Usage**: Track usage to avoid overages
2. **Choose Right Tier**: Don't over-provision
3. **Use Credits**: Take advantage of free credits
4. **Optimize Code**: Reduce API calls and resource usage
5. **Cache Data**: Use caching to reduce API calls

### Migration Strategies
1. **Gradual Migration**: Move services one by one
2. **Hybrid Approach**: Keep some services on free tier
3. **Cost Monitoring**: Set up alerts for usage
4. **Backup Plans**: Have alternatives ready

## 🔗 Related Resources

- **Free Tier Services**: [Free Tier Services](free_tier/)
- **AI/ML Services**: [AI/ML Services](free_tier/ai_ml.md)
- **Web Development Services**: [Web Development Services](free_tier/web_dev.md)
- **DevOps Services**: [DevOps Services](free_tier/devops.md)

## 📝 Notes

- **Pricing Changes**: Cloud service pricing changes frequently
- **Regional Differences**: Pricing may vary by region
- **Volume Discounts**: Many services offer volume discounts
- **Annual Plans**: Annual plans often provide discounts

## 🚨 Considerations

- **Hidden Costs**: Watch for hidden costs like data transfer
- **Usage Spikes**: Plan for usage spikes and overages
- **Contract Terms**: Understand contract terms and cancellation policies
- **Data Migration**: Consider data migration costs when switching services
