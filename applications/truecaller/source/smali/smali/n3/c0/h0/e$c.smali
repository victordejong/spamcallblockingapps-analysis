.class public Ln3/c0/h0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/h0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln3/c0/h0/e$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/c0/h0/e$c;->a:I

    .line 3
    iput p2, p0, Ln3/c0/h0/e$c;->b:I

    .line 4
    iput-object p3, p0, Ln3/c0/h0/e$c;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ln3/c0/h0/e$c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ln3/c0/h0/e$c;

    .line 2
    iget v0, p0, Ln3/c0/h0/e$c;->a:I

    iget v1, p1, Ln3/c0/h0/e$c;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Ln3/c0/h0/e$c;->b:I

    iget p1, p1, Ln3/c0/h0/e$c;->b:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
