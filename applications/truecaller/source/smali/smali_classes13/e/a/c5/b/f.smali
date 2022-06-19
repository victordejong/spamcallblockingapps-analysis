.class public Le/a/c5/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/c5/b/g;


# direct methods
.method public constructor <init>(Le/a/c5/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c5/b/f;->a:Le/a/c5/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c5/b/f;->a:Le/a/c5/b/g;

    .line 2
    iget-boolean v0, p1, Le/a/c5/b/g;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/c5/b/g;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/c5/b/g;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c5/b/b;

    check-cast p1, Lcom/truecaller/social_login/google/GoogleLoginActivity;

    invoke-interface {v0, p1}, Le/a/c5/b/b;->t0(Lcom/truecaller/social_login/google/GoogleLoginActivity;)V

    :cond_0
    return-void
.end method
