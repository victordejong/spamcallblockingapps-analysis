.class public final Le/a/i/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b/a;->setNativeAd(Le/a/i/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/i/b/a$a;->a:I

    iput-object p2, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/i/b/a$a;->a:I

    const-string v0, "Body"

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_0

    const-string v0, "Image"

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_2
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_3

    const-string v0, "Secondaryimage"

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 4
    :cond_4
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_5

    const-string v0, "Calltoaction"

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 5
    :cond_6
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 6
    :cond_8
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_9

    const-string v0, "Headline"

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 7
    :cond_a
    iget-object p1, p0, Le/a/i/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/b/b;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Le/a/i/b/b;->a(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
