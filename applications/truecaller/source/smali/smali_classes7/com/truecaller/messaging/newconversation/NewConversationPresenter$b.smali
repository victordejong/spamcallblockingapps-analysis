.class public final Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->Oj(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/newconversation/NewConversationPresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;->a:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iput-object p2, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;->a:Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    iget-object v1, p0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$b;->b:Ljava/util/List;

    .line 3
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/d/v;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 4
    invoke-interface {v2, v3}, Le/a/a/d/v;->f(Z)V

    const/4 v3, 0x1

    .line 5
    invoke-interface {v2, v3}, Le/a/a/d/v;->m3(Z)V

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v2, p1}, Le/a/a/d/v;->s0(Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 7
    invoke-interface {v2}, Le/a/a/d/v;->Go()V

    .line 8
    invoke-interface {v2}, Le/a/a/d/v;->C()V

    .line 9
    iget-object v0, v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->D:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 10
    sget-object v2, Le/a/l5/a/h0;->e:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/h0$b;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Le/a/l5/a/h0$b;-><init>(Le/a/l5/a/h0$a;)V

    .line 11
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object p1, v2, Le/a/l5/a/h0$b;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v5

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    .line 18
    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {v2, v1, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object p1, v2, Le/a/l5/a/h0$b;->b:Ljava/util/List;

    .line 21
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v4

    .line 22
    invoke-virtual {v2}, Le/a/l5/a/h0$b;->a()Le/a/l5/a/h0;

    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f1203ef

    .line 24
    invoke-interface {v2, p1}, Le/a/a/d/v;->w2(I)V

    :cond_2
    :goto_1
    return-void
.end method
