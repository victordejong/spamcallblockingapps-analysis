.class public Le/a/g5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/g5/d;


# direct methods
.method public constructor <init>(Le/a/g5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/c;->a:Le/a/g5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g5/c;->a:Le/a/g5/d;

    .line 2
    iget-boolean v0, p1, Le/a/g5/d;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/g5/d;->g:Z

    .line 4
    invoke-virtual {p1}, Le/a/g5/d;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/i;

    check-cast p1, Lcom/truecaller/tagger/NameSuggestionActivity;

    invoke-interface {v0, p1}, Le/a/g5/i;->H(Lcom/truecaller/tagger/NameSuggestionActivity;)V

    :cond_0
    return-void
.end method
