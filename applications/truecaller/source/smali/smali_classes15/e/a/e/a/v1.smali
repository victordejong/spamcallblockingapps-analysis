.class public final synthetic Le/a/e/a/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field public static final synthetic a:Le/a/e/a/v1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e/a/v1;

    invoke-direct {v0}, Le/a/e/a/v1;-><init>()V

    sput-object v0, Le/a/e/a/v1;->a:Le/a/e/a/v1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget v0, Le/a/e/a/k3;->s0:I

    .line 2
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x7f0a0532

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "VERSION_CODE"

    invoke-static {v0}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
