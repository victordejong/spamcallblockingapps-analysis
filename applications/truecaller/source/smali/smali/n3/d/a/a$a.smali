.class public final Ln3/d/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln3/d/a/a;
    .locals 4

    .line 1
    new-instance v0, Ln3/d/a/a;

    iget-object v1, p0, Ln3/d/a/a$a;->a:Ljava/lang/Integer;

    iget-object v2, p0, Ln3/d/a/a$a;->b:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ln3/d/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method
