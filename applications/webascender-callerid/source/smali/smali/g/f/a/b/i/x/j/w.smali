.class final synthetic Lg/f/a/b/i/x/j/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/j/b0$b;


# instance fields
.field private final a:Lg/f/a/b/i/x/j/b0;

.field private final b:Lg/f/a/b/i/m;

.field private final c:Lg/f/a/b/i/h;


# direct methods
.method private constructor <init>(Lg/f/a/b/i/x/j/b0;Lg/f/a/b/i/m;Lg/f/a/b/i/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f/a/b/i/x/j/w;->a:Lg/f/a/b/i/x/j/b0;

    iput-object p2, p0, Lg/f/a/b/i/x/j/w;->b:Lg/f/a/b/i/m;

    iput-object p3, p0, Lg/f/a/b/i/x/j/w;->c:Lg/f/a/b/i/h;

    return-void
.end method

.method public static a(Lg/f/a/b/i/x/j/b0;Lg/f/a/b/i/m;Lg/f/a/b/i/h;)Lg/f/a/b/i/x/j/b0$b;
    .locals 1

    new-instance v0, Lg/f/a/b/i/x/j/w;

    invoke-direct {v0, p0, p1, p2}, Lg/f/a/b/i/x/j/w;-><init>(Lg/f/a/b/i/x/j/b0;Lg/f/a/b/i/m;Lg/f/a/b/i/h;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/f/a/b/i/x/j/w;->a:Lg/f/a/b/i/x/j/b0;

    iget-object v1, p0, Lg/f/a/b/i/x/j/w;->b:Lg/f/a/b/i/m;

    iget-object v2, p0, Lg/f/a/b/i/x/j/w;->c:Lg/f/a/b/i/h;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lg/f/a/b/i/x/j/b0;->k0(Lg/f/a/b/i/x/j/b0;Lg/f/a/b/i/m;Lg/f/a/b/i/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
