.class public final Le/a/r/a0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/k/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/k/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a0/h;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/r/a0/h;->b:Le/a/b0/k/f;

    return-void
.end method
