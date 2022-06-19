.class public Le/a/b5/g/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b5/g/a;->g(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b5/g/a;


# direct methods
.method public constructor <init>(Le/a/b5/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b5/g/a$b;->a:Le/a/b5/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/j/l0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    const/16 v1, 0x10

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    .line 3
    iget-object p1, p1, Le/j/l0;->b:Ljava/lang/String;

    .line 4
    const-class v4, Lcom/truecaller/social/facebook/FacebookProfileDto;

    invoke-virtual {v0, p1, v4}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/social/facebook/FacebookProfileDto;

    .line 5
    iget-object v0, p0, Le/a/b5/g/a$b;->a:Le/a/b5/g/a;

    const/16 v4, 0xa

    invoke-virtual {p1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->toSocialNetworkProfile()Le/a/b5/f;

    move-result-object p1

    .line 6
    iget-object v0, v0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Le/a/b5/g/a$b;->a:Le/a/b5/g/a;

    .line 8
    invoke-virtual {v0, v1, v2, v3, p1}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/b5/g/a$b;->a:Le/a/b5/g/a;

    new-instance v4, Le/a/b5/d$b;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Le/a/b5/d$b;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v1, v2, v3, v4}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method
