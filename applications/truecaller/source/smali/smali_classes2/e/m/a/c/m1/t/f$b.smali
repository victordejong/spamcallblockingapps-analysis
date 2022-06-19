.class public final Le/m/a/c/m1/t/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/m1/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/m/a/c/m1/t/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/m/a/c/m1/t/d;


# direct methods
.method public constructor <init>(ILe/m/a/c/m1/t/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/m1/t/f$b;->a:I

    .line 3
    iput-object p2, p0, Le/m/a/c/m1/t/f$b;->b:Le/m/a/c/m1/t/d;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Le/m/a/c/m1/t/f$b;

    .line 2
    iget v0, p0, Le/m/a/c/m1/t/f$b;->a:I

    iget p1, p1, Le/m/a/c/m1/t/f$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method
