.class public final Lp3/b/c/w$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/b/c/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lp3/b/c/w;


# instance fields
.field public final a:Lp3/b/c/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lp3/b/c/w;->a(Ljava/util/List;)Lp3/b/c/w;

    move-result-object v0

    sput-object v0, Lp3/b/c/w$b;->b:Lp3/b/c/w;

    return-void
.end method

.method public constructor <init>(Lp3/b/c/w;Lp3/b/c/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "parent"

    .line 2
    invoke-static {p1, p2}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lp3/b/c/w$b;->a:Lp3/b/c/w;

    return-void
.end method
