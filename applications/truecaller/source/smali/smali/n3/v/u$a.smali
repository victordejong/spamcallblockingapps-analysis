.class public final enum Ln3/v/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln3/v/u$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln3/v/u$a;

.field public static final enum ON_ANY:Ln3/v/u$a;

.field public static final enum ON_CREATE:Ln3/v/u$a;

.field public static final enum ON_DESTROY:Ln3/v/u$a;

.field public static final enum ON_PAUSE:Ln3/v/u$a;

.field public static final enum ON_RESUME:Ln3/v/u$a;

.field public static final enum ON_START:Ln3/v/u$a;

.field public static final enum ON_STOP:Ln3/v/u$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ln3/v/u$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    .line 2
    new-instance v1, Ln3/v/u$a;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    .line 3
    new-instance v3, Ln3/v/u$a;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    .line 4
    new-instance v5, Ln3/v/u$a;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    .line 5
    new-instance v7, Ln3/v/u$a;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    .line 6
    new-instance v9, Ln3/v/u$a;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    .line 7
    new-instance v11, Ln3/v/u$a;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ln3/v/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ln3/v/u$a;->ON_ANY:Ln3/v/u$a;

    const/4 v13, 0x7

    new-array v13, v13, [Ln3/v/u$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Ln3/v/u$a;->$VALUES:[Ln3/v/u$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ln3/v/u$b;)Ln3/v/u$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln3/v/u$a;
    .locals 1

    .line 1
    const-class v0, Ln3/v/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/v/u$a;

    return-object p0
.end method

.method public static values()[Ln3/v/u$a;
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->$VALUES:[Ln3/v/u$a;

    invoke-virtual {v0}, [Ln3/v/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/v/u$a;

    return-object v0
.end method


# virtual methods
.method public a()Ln3/v/u$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Ln3/v/u$b;->a:Ln3/v/u$b;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object v0, Ln3/v/u$b;->e:Ln3/v/u$b;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Ln3/v/u$b;->d:Ln3/v/u$b;

    return-object v0

    .line 6
    :cond_3
    sget-object v0, Ln3/v/u$b;->c:Ln3/v/u$b;

    return-object v0
.end method
