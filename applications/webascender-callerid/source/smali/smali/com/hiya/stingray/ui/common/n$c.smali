.class public final Lcom/hiya/stingray/ui/common/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/common/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hiya/stingray/ui/common/n$c;->b:I

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/n$c;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/hiya/stingray/ui/common/n$c;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/n$c;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/common/n$c;->a:I

    return v0
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$c;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$c;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/ui/common/n$c;->a:I

    return-void
.end method
