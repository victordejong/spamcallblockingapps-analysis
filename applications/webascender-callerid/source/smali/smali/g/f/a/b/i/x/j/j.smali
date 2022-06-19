.class final synthetic Lg/f/a/b/i/x/j/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/j/b0$b;


# instance fields
.field private final a:J

.field private final b:Lg/f/a/b/i/m;


# direct methods
.method private constructor <init>(JLg/f/a/b/i/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/f/a/b/i/x/j/j;->a:J

    iput-object p3, p0, Lg/f/a/b/i/x/j/j;->b:Lg/f/a/b/i/m;

    return-void
.end method

.method public static a(JLg/f/a/b/i/m;)Lg/f/a/b/i/x/j/b0$b;
    .locals 1

    new-instance v0, Lg/f/a/b/i/x/j/j;

    invoke-direct {v0, p0, p1, p2}, Lg/f/a/b/i/x/j/j;-><init>(JLg/f/a/b/i/m;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lg/f/a/b/i/x/j/j;->a:J

    iget-object v2, p0, Lg/f/a/b/i/x/j/j;->b:Lg/f/a/b/i/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lg/f/a/b/i/x/j/b0;->q0(JLg/f/a/b/i/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
