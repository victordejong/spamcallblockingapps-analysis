.class public final Le/a/p/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public F0()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p/f;->a:Landroid/content/Context;

    const-string v1, "calls"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
