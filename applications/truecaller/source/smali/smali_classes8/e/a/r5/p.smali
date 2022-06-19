.class public final Le/a/r5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/r5/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/r5/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/p;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/r5/p;->b:Le/a/r5/i0;

    return-void
.end method
