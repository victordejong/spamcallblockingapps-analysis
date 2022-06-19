.class public final Le/a/o/a/c/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/a/c/a;


# direct methods
.method public constructor <init>(Le/a/o/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/c/a$d;->b:Le/a/o/a/c/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/a/c/a$d;->b:Le/a/o/a/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "manage_call_reason_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->SETTINGS:Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "activity?.intent?.getStr\u2026ticsContext.SETTINGS.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->valueOf(Ljava/lang/String;)Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object v0

    return-object v0
.end method
