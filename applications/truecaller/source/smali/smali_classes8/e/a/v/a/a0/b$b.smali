.class public final Le/a/v/a/a0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a0/b;->Dy(Le/a/v/a/a0/a;Le/a/v/a/a0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a0/b;

.field public final synthetic b:Le/a/v/a/a0/a;


# direct methods
.method public constructor <init>(Le/a/v/a/a0/b;Le/a/v/a/a0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/a0/b$b;->a:Le/a/v/a/a0/b;

    iput-object p2, p0, Le/a/v/a/a0/b$b;->b:Le/a/v/a/a0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/v/a/a0/b$b;->a:Le/a/v/a/a0/b;

    .line 2
    iget-object p1, p1, Le/a/v/a/a0/b;->b:Le/a/v/a/a0/d;

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Le/a/v/a/a0/b$b;->b:Le/a/v/a/a0/a;

    .line 4
    iget v0, v0, Le/a/v/a/a0/a;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected badge of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/a0/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/v/a/a0/c;->Tc()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/a0/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/v/a/a0/c;->bi()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
