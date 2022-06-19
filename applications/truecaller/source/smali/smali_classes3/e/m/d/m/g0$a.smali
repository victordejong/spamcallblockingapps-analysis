.class public Le/m/d/m/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/s/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/m/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/d/s/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Le/m/d/s/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Le/m/d/s/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/d/m/g0$a;->a:Le/m/d/s/c;

    return-void
.end method
