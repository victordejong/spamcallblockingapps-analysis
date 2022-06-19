.class public final Lcom/hiya/stingray/q/b/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/q/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "Lio/realm/h;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/w/b/l<",
            "-",
            "Lio/realm/h;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "migrate"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hiya/stingray/q/b/z$b;->a:J

    iput-wide p3, p0, Lcom/hiya/stingray/q/b/z$b;->b:J

    iput-object p5, p0, Lcom/hiya/stingray/q/b/z$b;->c:Lkotlin/w/b/l;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/b/z$b;->a:J

    return-wide v0
.end method

.method public final b()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Lio/realm/h;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/z$b;->c:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/b/z$b;->b:J

    return-wide v0
.end method
