.class public final Le/a/d0/a/a$m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/a$m;->b:Le/a/d0/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/a/a$m;->b:Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0c88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    return-object v0
.end method
