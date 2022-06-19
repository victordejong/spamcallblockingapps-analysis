.class final synthetic Lg/f/a/b/i/x/j/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/j/b0$b;


# instance fields
.field private final a:Lg/f/a/b/i/x/j/b0;

.field private final b:Ljava/util/List;

.field private final c:Lg/f/a/b/i/m;


# direct methods
.method private constructor <init>(Lg/f/a/b/i/x/j/b0;Ljava/util/List;Lg/f/a/b/i/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f/a/b/i/x/j/n;->a:Lg/f/a/b/i/x/j/b0;

    iput-object p2, p0, Lg/f/a/b/i/x/j/n;->b:Ljava/util/List;

    iput-object p3, p0, Lg/f/a/b/i/x/j/n;->c:Lg/f/a/b/i/m;

    return-void
.end method

.method public static a(Lg/f/a/b/i/x/j/b0;Ljava/util/List;Lg/f/a/b/i/m;)Lg/f/a/b/i/x/j/b0$b;
    .locals 1

    new-instance v0, Lg/f/a/b/i/x/j/n;

    invoke-direct {v0, p0, p1, p2}, Lg/f/a/b/i/x/j/n;-><init>(Lg/f/a/b/i/x/j/b0;Ljava/util/List;Lg/f/a/b/i/m;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/f/a/b/i/x/j/n;->a:Lg/f/a/b/i/x/j/b0;

    iget-object v1, p0, Lg/f/a/b/i/x/j/n;->b:Ljava/util/List;

    iget-object v2, p0, Lg/f/a/b/i/x/j/n;->c:Lg/f/a/b/i/m;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lg/f/a/b/i/x/j/b0;->X(Lg/f/a/b/i/x/j/b0;Ljava/util/List;Lg/f/a/b/i/m;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
