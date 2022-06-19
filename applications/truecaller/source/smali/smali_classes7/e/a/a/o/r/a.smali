.class public Le/a/a/o/r/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/a/o/r/b;


# direct methods
.method public constructor <init>(Le/a/a/o/r/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/o/r/a;->a:Le/a/a/o/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/o/r/a;->a:Le/a/a/o/r/b;

    .line 2
    iget-boolean v0, p1, Le/a/a/o/r/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/a/o/r/b;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/a/o/r/b;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/o/r/d;

    check-cast p1, Lcom/truecaller/messaging/storagemanager/langpack/LangPackStorageManagerActivity;

    invoke-interface {v0, p1}, Le/a/a/o/r/d;->L(Lcom/truecaller/messaging/storagemanager/langpack/LangPackStorageManagerActivity;)V

    :cond_0
    return-void
.end method
