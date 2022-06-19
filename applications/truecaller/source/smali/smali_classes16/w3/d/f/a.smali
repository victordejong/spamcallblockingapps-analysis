.class public Lw3/d/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lw3/d/f/a;

.field public static c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lw3/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/d/f/a;

    invoke-direct {v0}, Lw3/d/f/a;-><init>()V

    sput-object v0, Lw3/d/f/a;->b:Lw3/d/f/a;

    const-string v0, "1.6.99"

    .line 2
    sput-object v0, Lw3/d/f/a;->c:Ljava/lang/String;

    .line 3
    const-class v0, Lw3/d/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/d/f/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lw3/d/e/c;

    invoke-direct {v0}, Lw3/d/e/c;-><init>()V

    iput-object v0, p0, Lw3/d/f/a;->a:Lw3/d/a;

    return-void
.end method
