.class Lcom/hiya/stingray/manager/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/hiya/stingray/util/g0/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/e1$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/e1$a;->b:Lcom/hiya/stingray/util/g0/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e1$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/hiya/stingray/util/g0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e1$a;->b:Lcom/hiya/stingray/util/g0/c;

    return-object v0
.end method
