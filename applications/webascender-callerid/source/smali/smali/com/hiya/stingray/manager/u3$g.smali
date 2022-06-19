.class public final Lcom/hiya/stingray/manager/u3$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/manager/u3$p;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u3$p;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$g;->a:Lcom/hiya/stingray/manager/u3$p;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/manager/u3$p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$g;->a:Lcom/hiya/stingray/manager/u3$p;

    return-object v0
.end method
