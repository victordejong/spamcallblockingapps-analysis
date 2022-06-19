.class public Le/a/y/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/g/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/g/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/a/y/g/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->flashsdk_item_favourite_contact:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/a/y/g/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    check-cast p1, Le/a/y/g/a;

    .line 3
    iget-object v0, p0, Le/a/y/g/a;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Le/a/y/g/a;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Le/a/y/g/a;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/y/g/a;->c:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Le/a/y/g/a;->c:Ljava/lang/String;

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
