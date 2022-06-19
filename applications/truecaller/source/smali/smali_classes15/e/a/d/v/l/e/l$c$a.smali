.class public final Le/a/d/v/l/e/l$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/l$c;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/x/r/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/v/l/e/l$c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/l$c$a;->a:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/v/l/e/l$c$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/v/l/e/l$c$a$a;

    iget v2, v1, Le/a/d/v/l/e/l$c$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/v/l/e/l$c$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/v/l/e/l$c$a$a;

    invoke-direct {v1, p0, p2}, Le/a/d/v/l/e/l$c$a$a;-><init>(Le/a/d/v/l/e/l$c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/v/l/e/l$c$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/v/l/e/l$c$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/v/l/e/l$c$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Le/a/d/x/r/i;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Peer attribute change. Attribute: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Le/a/d/x/r/i;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_4

    .line 8
    new-instance v3, Le/a/d/v/l/e/m$a;

    sget-object p1, Le/a/d/v/l/c$b$d;->b:Le/a/d/v/l/c$b$d;

    invoke-direct {v3, p1}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    goto :goto_3

    .line 9
    :cond_4
    sget-object v5, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Joined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v5}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    sget-object v5, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v5}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    sget-object v3, Le/a/d/v/l/e/m$b;->a:Le/a/d/v/l/e/m$b;

    goto :goto_3

    .line 11
    :cond_6
    sget-object v5, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Declined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v5}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v3, Le/a/d/v/l/e/m$a;

    sget-object p1, Le/a/d/v/l/c$b$e;->b:Le/a/d/v/l/c$b$e;

    invoke-direct {v3, p1}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    goto :goto_3

    .line 12
    :cond_7
    sget-object v5, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->TimedOut:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v5}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance v3, Le/a/d/v/l/e/m$a;

    sget-object p1, Le/a/d/v/l/c$b$g;->b:Le/a/d/v/l/c$b$g;

    invoke-direct {v3, p1}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 13
    iput v4, v1, Le/a/d/v/l/e/l$c$a$a;->e:I

    invoke-interface {p2, v3, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    :cond_9
    :goto_4
    return-object v0
.end method
