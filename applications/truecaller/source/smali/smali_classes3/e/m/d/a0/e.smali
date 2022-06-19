.class public Le/m/d/a0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Le/m/d/a0/e;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/d/a0/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/m/d/a0/e;->a:Ljava/util/Set;

    return-void
.end method
