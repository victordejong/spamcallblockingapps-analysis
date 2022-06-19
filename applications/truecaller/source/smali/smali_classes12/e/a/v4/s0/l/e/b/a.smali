.class public Le/a/v4/s0/l/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/s0/l/e/b/b;


# instance fields
.field private code:I

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/v4/s0/l/e/b/a;->code:I

    iput-object p2, p0, Le/a/v4/s0/l/e/b/a;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "Something went wrong"

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public errorCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/v4/s0/l/e/b/a;->code:I

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/l/e/b/a;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/v4/s0/l/e/b/a;->code:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/l/e/b/a;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/v4/s0/l/e/b/a;->code:I

    return-void
.end method
