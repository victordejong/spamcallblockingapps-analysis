.class public final Ln3/m0/c0/t/w/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/t/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Ln3/m0/c0/t/w/a$d;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln3/m0/c0/t/w/a$d;

    new-instance v1, Ln3/m0/c0/t/w/a$d$a;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Ln3/m0/c0/t/w/a$d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln3/m0/c0/t/w/a$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Ln3/m0/c0/t/w/a$d;->b:Ln3/m0/c0/t/w/a$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Ln3/m0/c0/t/w/a;->d:Z

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Ln3/m0/c0/t/w/a$d;->a:Ljava/lang/Throwable;

    return-void
.end method
