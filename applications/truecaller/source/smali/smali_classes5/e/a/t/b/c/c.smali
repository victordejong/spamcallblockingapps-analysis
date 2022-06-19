.class public Le/a/t/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;


# direct methods
.method public constructor <init>(IILcom/truecaller/android/sdk/clients/CustomDataBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/a/t/b/c/c;->a:I

    .line 3
    iput p2, p0, Le/a/t/b/c/c;->b:I

    .line 4
    iput-object p3, p0, Le/a/t/b/c/c;->c:Lcom/truecaller/android/sdk/clients/CustomDataBundle;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Le/a/t/b/c/c;->b(I)Z

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/t/b/c/c;->a:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
