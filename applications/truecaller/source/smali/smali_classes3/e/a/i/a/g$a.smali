.class public final Le/a/i/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/i/a/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/a/g$a;

    invoke-direct {v0}, Le/a/i/a/g$a;-><init>()V

    sput-object v0, Le/a/i/a/g$a;->a:Le/a/i/a/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "fallbackImage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackTextView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    sget p1, Lcom/truecaller/ads/R$string;->AdVideoFailed:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
