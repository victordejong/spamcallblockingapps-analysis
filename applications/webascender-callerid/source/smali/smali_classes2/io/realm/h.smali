.class public Lio/realm/h;
.super Lio/realm/a;
.source "SourceFile"


# instance fields
.field private final o:Lio/realm/j0;


# direct methods
.method private constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/realm/a;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 5
    new-instance p1, Lio/realm/r;

    invoke-direct {p1, p0}, Lio/realm/r;-><init>(Lio/realm/a;)V

    iput-object p1, p0, Lio/realm/h;->o:Lio/realm/j0;

    return-void
.end method

.method private constructor <init>(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lio/realm/a;-><init>(Lio/realm/z;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V

    .line 2
    invoke-virtual {p1}, Lio/realm/z;->i()Lio/realm/b0;

    move-result-object p2

    new-instance v0, Lio/realm/h$a;

    invoke-direct {v0, p0, p1}, Lio/realm/h$a;-><init>(Lio/realm/h;Lio/realm/z;)V

    invoke-static {p2, v0}, Lio/realm/z;->m(Lio/realm/b0;Lio/realm/z$b;)V

    .line 3
    new-instance p1, Lio/realm/r;

    invoke-direct {p1, p0}, Lio/realm/r;-><init>(Lio/realm/a;)V

    iput-object p1, p0, Lio/realm/h;->o:Lio/realm/j0;

    return-void
.end method

.method static X(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/h;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/h;

    invoke-direct {v0, p0, p1}, Lio/realm/h;-><init>(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)V

    return-object v0
.end method

.method static Y(Lio/realm/internal/OsSharedRealm;)Lio/realm/h;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/h;

    invoke-direct {v0, p0}, Lio/realm/h;-><init>(Lio/realm/internal/OsSharedRealm;)V

    return-object v0
.end method


# virtual methods
.method public C()Lio/realm/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/h;->o:Lio/realm/j0;

    return-object v0
.end method

.method public k0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->e()V

    .line 3
    iget-object v0, p0, Lio/realm/h;->o:Lio/realm/j0;

    invoke-virtual {v0, p1}, Lio/realm/j0;->j(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/Table;->d()V

    return-void
.end method
