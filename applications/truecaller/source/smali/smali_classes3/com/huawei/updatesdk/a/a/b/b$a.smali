.class public Lcom/huawei/updatesdk/a/a/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/huawei/updatesdk/a/a/b/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/huawei/updatesdk/a/a/b/b$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
