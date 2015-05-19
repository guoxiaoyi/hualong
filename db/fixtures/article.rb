WizcmsArticle::ArticleCategory.seed(:id,
  {id: 1, name: '组织机构', custom_order: '', parent_id: 0, brief: 'organ', published: 1, cite_key: 'organ'},
  {id: 2, name: '论坛动态', custom_order: '', parent_id: 0, brief: 'bbs', published: 1, cite_key: 'bbs'},
  {id: 3, name: '研究成果', custom_order: '', parent_id: 0, brief: 'study', published: 1, cite_key: 'study'},
  {id: 4, name: '媒体动态', custom_order: '', parent_id: 0, brief: 'news', published: 1, cite_key: 'news'},
  {id: 5, name: '学术委员会', custom_order: '', parent_id: 0, brief: 'learning', published: 1, cite_key: 'learning'},
  {id: 6, name: '企业委员会', custom_order: '', parent_id: 0, brief: 'enterprise', published: 1, cite_key: 'enterprise'}
)
WizcmsArticle::Page.seed(:id,
  {id: 1, title: '联系我们', content: '联系我们联系我们', published: 1, cite_key: 'contact_us', keywords: 'contact_us', brief: '', parent_id: ''}
)