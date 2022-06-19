.class public final Le/a/q2/o0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/o0;->p(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.MessageAnalyticsImpl$logMarkMessageSpam$1"
    f = "MessageAnalyticsImpl.kt"
    l = {
        0x195
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q2/o0;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/q2/o0;ZLcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/o0$c;->f:Le/a/q2/o0;

    iput-boolean p2, p0, Le/a/q2/o0$c;->g:Z

    iput-object p3, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iput-object p4, p0, Le/a/q2/o0$c;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/q2/o0$c;->j:Ljava/lang/String;

    iput-object p6, p0, Le/a/q2/o0$c;->k:Ljava/lang/String;

    iput-object p7, p0, Le/a/q2/o0$c;->l:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/o0$c;

    iget-object v1, p0, Le/a/q2/o0$c;->f:Le/a/q2/o0;

    iget-boolean v2, p0, Le/a/q2/o0$c;->g:Z

    iget-object v3, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/q2/o0$c;->i:Ljava/lang/String;

    iget-object v5, p0, Le/a/q2/o0$c;->j:Ljava/lang/String;

    iget-object v6, p0, Le/a/q2/o0$c;->k:Ljava/lang/String;

    iget-object v7, p0, Le/a/q2/o0$c;->l:Ljava/lang/String;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/q2/o0$c;-><init>(Le/a/q2/o0;ZLcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/o0$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/o0$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/o0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q2/o0$c;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/q2/o0$c;->g:Z

    if-eqz p1, :cond_2

    const-string p1, "spam"

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/q2/o0$c;->f:Le/a/q2/o0;

    .line 6
    iget-object p1, p1, Le/a/q2/o0;->c:Le/a/q2/j0;

    .line 7
    iget-object v1, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-wide v5, v1, Lcom/truecaller/messaging/data/types/Message;->b:J

    iput v4, p0, Le/a/q2/o0$c;->e:I

    check-cast p1, Le/a/q2/l0;

    .line 8
    iget-object v1, p1, Le/a/q2/l0;->a:Ls1/w/f;

    new-instance v7, Le/a/q2/k0;

    invoke-direct {v7, p1, v5, v6, v2}, Le/a/q2/k0;-><init>(Le/a/q2/l0;JLs1/w/d;)V

    invoke-static {v1, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "business"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "personal"

    .line 10
    :goto_2
    sget-object v0, Le/a/l5/a/c1;->k:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/c1$b;

    invoke-direct {v0, v2}, Le/a/l5/a/c1$b;-><init>(Le/a/l5/a/c1$a;)V

    .line 11
    iget-object v1, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-interface {v2, v1}, Lcom/truecaller/messaging/data/types/TransportInfo;->T1(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v1, v0, Le/a/l5/a/c1$b;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 15
    iget-object v1, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v1}, Le/m/d/y/n;->w1(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 17
    iput-object v1, v0, Le/a/l5/a/c1$b;->b:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v5

    .line 19
    iget-object v1, p0, Le/a/q2/o0$c;->f:Le/a/q2/o0;

    iget-object v2, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "message.participant"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Le/a/q2/o0$c;->h:Lcom/truecaller/messaging/data/types/Message;

    iget v5, v5, Lcom/truecaller/messaging/data/types/Message;->k:I

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v3, :cond_7

    .line 21
    iget-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, ""

    :goto_3
    const-string v2, "imPeerId ?: \"\""

    goto :goto_4

    :cond_7
    iget-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "normalizedAddress"

    :goto_4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 23
    iput-object v1, v0, Le/a/l5/a/c1$b;->c:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 25
    iget-object v1, p0, Le/a/q2/o0$c;->i:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 27
    iput-object v1, v0, Le/a/l5/a/c1$b;->d:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 29
    iget-object v1, p0, Le/a/q2/o0$c;->j:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 31
    iput-object v1, v0, Le/a/l5/a/c1$b;->e:Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 33
    iget-object v1, p0, Le/a/q2/o0$c;->k:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 35
    iput-object v1, v0, Le/a/l5/a/c1$b;->f:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 37
    iget-object v1, p0, Le/a/q2/o0$c;->l:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 39
    iput-object v1, v0, Le/a/l5/a/c1$b;->h:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v4, v1, v3

    .line 41
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-object p1, v0, Le/a/l5/a/c1$b;->g:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v4, p1, v2

    .line 44
    iget-object p1, p0, Le/a/q2/o0$c;->f:Le/a/q2/o0;

    .line 45
    iget-object p1, p1, Le/a/q2/o0;->a:Le/a/r2/f;

    .line 46
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v0}, Le/a/l5/a/c1$b;->a()Le/a/l5/a/c1;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 47
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
