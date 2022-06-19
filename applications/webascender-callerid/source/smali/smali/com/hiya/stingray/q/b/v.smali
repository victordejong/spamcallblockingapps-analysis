.class public Lcom/hiya/stingray/q/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/b/w;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/w;)V
    .locals 1

    const-string v0, "dbInitializer"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/v;->a:Lcom/hiya/stingray/q/b/w;

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/v;->a:Lcom/hiya/stingray/q/b/w;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/w;->a()Lio/realm/y;

    move-result-object v0

    return-object v0
.end method
