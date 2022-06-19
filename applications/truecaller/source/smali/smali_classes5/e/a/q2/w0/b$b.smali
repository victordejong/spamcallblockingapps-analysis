.class public final Le/a/q2/w0/b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/w0/b;-><init>(Ls1/w/f;Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/q2/w0/h/h;Lo3/a;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Le/a/f/y/x;",
        "Le/a/q2/w0/h/j;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/q2/w0/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/q2/w0/b$b;

    invoke-direct {v0}, Le/a/q2/w0/b$b;-><init>()V

    sput-object v0, Le/a/q2/w0/b$b;->b:Le/a/q2/w0/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object v0
.end method
