WizcmsArticle::ArticleCategory.seed(:id,
  {id: 1, name: '论坛动态', custom_order: '', parent_id: 0, brief: 'bbs', published: 1, cite_key: 'bbs'},
  {id: 2, name: '研究成果', custom_order: '', parent_id: 0, brief: 'study', published: 1, cite_key: 'study'},
  {id: 3, name: '媒体动态', custom_order: '', parent_id: 0, brief: 'news', published: 1, cite_key: 'news'}
)
WizcmsArticle::Page.seed(:id,
  {id: 1, title: '组织机构', content: '组织机构组织机构', published: 1, cite_key: 'organ', keywords: 'organ', brief: '', parent_id: ''},
  {id: 2, title: '学术委员会', content: '联系我们联系我们', published: 1, cite_key: 'learning', keywords: 'learning', brief: '', parent_id: ''},
  {id: 3, title: '企业委员会', content: '联系我们联系我们', published: 1, cite_key: 'enterprise', keywords: 'enterprise', brief: '', parent_id: ''},
  {id: 4, title: '联系我们', content: '联系我们联系我们', published: 1, cite_key: 'contact_us', keywords: 'contact_us', brief: '', parent_id: ''}
)