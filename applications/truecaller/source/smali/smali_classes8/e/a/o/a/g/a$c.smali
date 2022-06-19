.class public final Le/a/o/a/g/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/o/b;

.field public final synthetic b:Le/a/o/a/g/a;


# direct methods
.method public constructor <init>(Le/a/o/o/b;Le/a/o/a/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/a$c;->a:Le/a/o/o/b;

    iput-object p2, p0, Le/a/o/a/g/a$c;->b:Le/a/o/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/a/g/a$c;->b:Le/a/o/a/g/a;

    .line 2
    iget-object p1, p1, Le/a/o/a/g/a;->a:Le/a/o/a/g/e;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o/a/g/a$c;->a:Le/a/o/o/b;

    iget-object v0, v0, Le/a/o/o/b;->b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {v0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/o/a/g/e;->w1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
