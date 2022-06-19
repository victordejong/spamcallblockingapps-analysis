.class public Le/m/i/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Le/m/i/i/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/m/i/i/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/m/i/i/b/f;

    check-cast p2, Le/m/i/i/b/f;

    .line 2
    iget p1, p1, Le/m/i/i/b/f;->d:I

    iget p2, p2, Le/m/i/i/b/f;->d:I

    sub-int/2addr p1, p2

    return p1
.end method
