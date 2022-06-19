package p193e.p194a.p372b0.p426p.p428g;

import com.truecaller.common.tag.network.TagRestModel;
import java.util.List;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.i;
import x3.h0.o;
/* renamed from: e.a.b0.p.g.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/g/b.class */
public interface AbstractC8560b {
    @o("/v1/phoneNumbers/tags")
    /* renamed from: a */
    b<l0> m28389a(@a List<TagRestModel.SetTagsRequest> list);

    @f("/v1/tags/keywords")
    /* renamed from: b */
    b<TagRestModel.KeywordsResponse> m28388b(@i("If-None-Match") String str);

    @f("/v1/tags")
    /* renamed from: c */
    b<TagRestModel.TagsResponse> m28387c(@i("If-None-Match") String str);
}
