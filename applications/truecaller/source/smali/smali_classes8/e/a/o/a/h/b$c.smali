.class public final Le/a/o/a/h/b$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/h/b;-><init>()V
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
.field public final synthetic b:Le/a/o/a/h/b;


# direct methods
.method public constructor <init>(Le/a/o/a/h/b;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/h/b$c;->b:Le/a/o/a/h/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/a/h/b$c;->b:Le/a/o/a/h/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "manage_call_reason_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->SETTINGS:Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "arguments?.getString(ARG\u2026ticsContext.SETTINGS.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->valueOf(Ljava/lang/String;)Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object v0

    return-object v0
.end method
