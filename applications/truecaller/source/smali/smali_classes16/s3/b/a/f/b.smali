.class public interface abstract Ls3/b/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls3/b/a/f/b;

.field public static final b:Ls3/b/a/f/b;

.field public static final c:Ls3/b/a/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls3/b/a/f/b$a;

    invoke-direct {v0}, Ls3/b/a/f/b$a;-><init>()V

    sput-object v0, Ls3/b/a/f/b;->a:Ls3/b/a/f/b;

    .line 2
    new-instance v0, Ls3/b/a/f/b$b;

    invoke-direct {v0}, Ls3/b/a/f/b$b;-><init>()V

    sput-object v0, Ls3/b/a/f/b;->b:Ls3/b/a/f/b;

    .line 3
    new-instance v0, Ls3/b/a/f/b$c;

    invoke-direct {v0}, Ls3/b/a/f/b$c;-><init>()V

    sput-object v0, Ls3/b/a/f/b;->c:Ls3/b/a/f/b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
.end method
