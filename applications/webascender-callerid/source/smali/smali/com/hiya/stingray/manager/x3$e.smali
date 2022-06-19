.class final Lcom/hiya/stingray/manager/x3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/x3;->i(Lcom/hiya/stingray/manager/x3$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/p<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/x3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/x3$e;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/x3$e;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/x3$e;->f:Lcom/hiya/stingray/manager/x3$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Remote config failed with exception: %s"

    invoke-static {p1, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/x3$e;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
