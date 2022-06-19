.class public Le/a/r/x/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/x/n;->VA(Lcom/truecaller/social/SocialNetworkType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b5/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/social/SocialNetworkType;

.field public final synthetic b:Le/a/r/x/n;


# direct methods
.method public constructor <init>(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/x/n$b;->b:Le/a/r/x/n;

    iput-object p2, p0, Le/a/r/x/n$b;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b5/b;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "Login/logout error with "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/a/b5/a;

    .line 2
    iget-object v2, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/r/x/n$b;->b:Le/a/r/x/n;

    iget-object v0, v0, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    iget-object v2, p0, Le/a/r/x/n$b;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Login"

    invoke-virtual {v0, v2, v3}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/r/x/n$b;->b:Le/a/r/x/n;

    .line 6
    iget-object v1, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 7
    invoke-static {v0, v1, p2}, Le/a/r/x/n;->RA(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;Ljava/lang/Throwable;)V

    .line 8
    iget-object p2, p0, Le/a/r/x/n$b;->b:Le/a/r/x/n;

    .line 9
    invoke-virtual {p2, p1}, Le/a/r/x/n;->SA(Le/a/b5/b;)V

    return-void
.end method

.method public b(Le/a/b5/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Logged in to "

    .line 3
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Le/a/b5/a;

    .line 4
    iget-object v0, v0, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Le/a/b5/b;->a()V

    :cond_0
    return-void
.end method
