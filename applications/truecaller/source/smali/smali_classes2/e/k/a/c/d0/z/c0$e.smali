.class public final Le/k/a/c/d0/z/c0$e;
.super Le/k/a/c/d0/z/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final d:Le/k/a/c/d0/z/c0$e;

.field public static final e:Le/k/a/c/d0/z/c0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/z/c0$e;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Le/k/a/c/d0/z/c0$e;-><init>(Ljava/lang/Class;)V

    sput-object v0, Le/k/a/c/d0/z/c0$e;->d:Le/k/a/c/d0/z/c0$e;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/c0$e;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Le/k/a/c/d0/z/c0$e;-><init>(Ljava/lang/Class;)V

    sput-object v0, Le/k/a/c/d0/z/c0$e;->e:Le/k/a/c/d0/z/c0$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0, p1}, Le/k/a/c/d0/z/c0;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    return-object p1
.end method
