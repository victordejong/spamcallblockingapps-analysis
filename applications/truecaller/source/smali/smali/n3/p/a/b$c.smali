.class public Ln3/p/a/b$c;
.super Ln3/p/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/p/a/b;-><init>(Ln3/p/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/p/a/e;


# direct methods
.method public constructor <init>(Ln3/p/a/b;Ljava/lang/String;Ln3/p/a/e;)V
    .locals 0

    .line 1
    iput-object p3, p0, Ln3/p/a/b$c;->a:Ln3/p/a/e;

    invoke-direct {p0, p2}, Ln3/p/a/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/p/a/b$c;->a:Ln3/p/a/e;

    .line 2
    iget p1, p1, Ln3/p/a/e;->a:F

    return p1
.end method

.method public b(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/p/a/b$c;->a:Ln3/p/a/e;

    .line 2
    iput p2, p1, Ln3/p/a/e;->a:F

    return-void
.end method
