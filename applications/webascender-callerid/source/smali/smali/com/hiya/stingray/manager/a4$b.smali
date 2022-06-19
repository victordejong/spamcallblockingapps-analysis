.class final Lcom/hiya/stingray/manager/a4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/a4;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/a4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/a4$b;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/a4$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/a4$b;->f:Lcom/hiya/stingray/manager/a4$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "SelectManagerLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token successfully re-fetched."

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
