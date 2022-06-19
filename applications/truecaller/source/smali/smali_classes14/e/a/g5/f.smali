.class public Le/a/g5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/g5/g;


# direct methods
.method public constructor <init>(Le/a/g5/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/f;->a:Le/a/g5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g5/f;->a:Le/a/g5/g;

    .line 2
    iget-boolean v0, p1, Le/a/g5/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/g5/g;->g:Z

    .line 4
    invoke-virtual {p1}, Le/a/g5/g;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/s;

    check-cast p1, Lcom/truecaller/tagger/TagPickActivity;

    invoke-interface {v0, p1}, Le/a/g5/s;->P(Lcom/truecaller/tagger/TagPickActivity;)V

    :cond_0
    return-void
.end method
