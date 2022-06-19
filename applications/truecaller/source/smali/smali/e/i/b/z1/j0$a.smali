.class public Le/i/b/z1/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/z1/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/p/c/b$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/i/b/s2/j;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/s2/j;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/s2/j;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/j0$a;->a:Le/i/b/s2/j;

    .line 3
    iput-object p2, p0, Le/i/b/z1/j0$a;->b:Ljava/lang/Class;

    return-void
.end method
